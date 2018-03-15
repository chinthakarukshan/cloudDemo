package cloud.hello;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.concurrent.atomic.AtomicLong;

@RestController
public class CloudDemoGreeting {
    private static final String template = "Hello, %s!";
    private final AtomicLong counter = new AtomicLong();

    @RequestMapping("/clouddemo")
    public Greeting greeting(@RequestParam(value="name", defaultValue="Cloud Systems and Technologies") String name) {
        return new Greeting(counter.incrementAndGet(),
                String.format(template, name));
    }
}
