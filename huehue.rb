require 'hue'

hue = Hue::Client.new

loop do
    hue.lights.each do |light|
        if light.type == 'Extended color light'
            light.hue = rand(Hue::Light::HUE_RANGE)
            light.saturation = rand(Hue::Light::SATURATION_RANGE)
            light.brightness = rand(Hue::Light::BRIGHTNESS_RANGE)
        else
            light.off!
        end
    end
    sleep 3
end
