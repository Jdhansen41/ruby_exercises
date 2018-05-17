class Timer
    attr_accessor :seconds
    
    def initialize
        @seconds = 0
    end
    
    def seconds=(input_time)
        @seconds = input_time
    end
    
    def time_string
        str = ""
        min = @seconds / 60
        sec = @seconds % 60
        hour = @seconds / 3600
        
        case @seconds   #Could be refactored with a helper method to pad time format, i've chosen to keep it all in time_string and utilize if/else within cases
        when 0..9
            str = "00:00:0#{@seconds}"
        when 10..59
            str = "00:00:#{@seconds}"
        when 60..599
            if sec < 10
                str = "00:0#{min}:0#{sec}"
            else
                str = "00:0#{min}:#{sec}"
            end
        when 600..3599
            if sec < 10
                str = "00:#{min}:0#{sec}"
            else
                str = "00:#{min}:#{sec}"
            end
        when 3600..35999
            min = (@seconds / 60) % 60
            if min < 10 && sec < 10
                str = "0#{hour}:0#{min}:0#{sec}"
            elsif min < 10 && sec > 9
                str = "0#{hour}:0#{min}:#{sec}"
            elsif min > 9 && sec < 10
                str = "0#{hour}:#{min}:0#{sec}"
            else 
                str = "0#{hour}:#{min}:#{sec}"
           end
        when @seconds > 35999
            if min < 10 && sec < 10
                str = "#{hour}:0#{min}:0#{sec}"
            elsif min < 10 && sec > 9
                str = "#{hour}:#{min}:#{sec}"
            elsif min > 9 && sec < 10
                str = "#{hour}:#{min}:0#{sec}"
            else
                str = "#{hour}:#{min}:#{sec}"
            end
        else
            "err"
        str
    end
        
    end
 
end
