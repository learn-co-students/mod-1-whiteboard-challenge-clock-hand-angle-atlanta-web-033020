def clock_angle(time)
    hour = time.split(":")[0].to_i
    minute = time.split(":")[1].to_i

    hour_angle = ((hour % 12).to_f + minute.to_f / 60) * (360 / 12)
    minute_angle = minute.to_f / 60 * 360

    [(hour_angle - minute_angle).abs, (360 - hour_angle - minute_angle).abs].min
end
