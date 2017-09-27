filename = ARGV[0]
basename = File.basename filename

`sox #{filename} -b 16 -L -e signed-integer /tmp/#{basename}.audio.raw`

audio = File.read("/tmp/#{basename}.audio.raw")

height = 257

image = ([[]] * height).map(&:dup)

max_width = 2048
width = 0
audio.bytes.each_slice(2) do |pair|
  width += 1
  break if width > max_width
  val = pair.map(&:chr).join.unpack("s<").first
  mid_intensity = 127

  acc = (val + 32768 - mid_intensity * height)
  sign = acc <=> 0
  acc = acc.abs

  topheavy = acc.even? && (acc/2).even?
  max_intensity = sign == 1 ? (255 - mid_intensity): mid_intensity

  center_intensity = [acc, max_intensity].min
  image[(height / 2)] << (center_intensity * sign) + mid_intensity
  acc -= center_intensity

  (1..(height / 2)).each do |i|
    top = (height / 2) - i
    bot = (height / 2) + i
    if acc >= max_intensity * 2
      image[top] << mid_intensity + (max_intensity * sign)
      image[bot] << mid_intensity + (max_intensity * sign)
      acc -= max_intensity * 2
    elsif acc > 0
      topv = acc / 2
      bottomv = acc / 2
      if acc.odd?
        if topheavy
          topv += 1
        else
          bottomv += 1
        end
      end
      image[top] << topv * sign + mid_intensity
      image[bot] << bottomv * sign + mid_intensity
      acc -= bottomv
      acc -= topv
    else
      image[top] << mid_intensity
      image[bot] << mid_intensity
    end
  end

  raise "wtf #{acc}" unless acc.zero?
  total = image.map(&:last).inject(&:+)
  raise "#{total} vs #{val + 32768} = #{total - (val + 32768)}" unless total == val + 32768
end

width = image.first.size
puts "#{width}x#{height} #{basename}.blob.png"

File.open("/tmp/#{basename}.image.raw","w"){|f| f.print image.flatten.map(&:chr).join }

`convert -depth 8 -size #{width}x#{height} r:/tmp/#{basename}.image.raw #{basename}.blob.png`
