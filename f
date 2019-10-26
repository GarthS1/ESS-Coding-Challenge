import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

SimpleDateFormat format = new SimpleDateFormat("dd-M-yyyy hh:mm:ss");
    String DateToStr = format.format(available_times[i]);
    text(DateToStr,y,x+50);
    
