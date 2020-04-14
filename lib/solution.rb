def clock_angle(time)
        int_time = time.split(":")
        hour =  int_time[0].to_i
        minute = int_time[1].to_i

        hour_angle = ((hour%12) * 30) + ((minute.to_f/60) * 30)
        minute_angle = 6 * minute
        
        angle = hour_angle - minute_angle
        angle.abs
        
        angle_2 = ((360 + minute_angle) - hour_angle).abs
        angle < angle_2 ? angle : angle_2
        
        [(hour_angle - minute_angle).abs, (360 - hour_angle - minute_angle).abs].min
end
