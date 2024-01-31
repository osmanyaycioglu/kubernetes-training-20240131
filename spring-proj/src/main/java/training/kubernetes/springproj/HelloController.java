package training.kubernetes.springproj;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.net.InetAddress;
import java.net.UnknownHostException;

@RestController
@RequestMapping("/api/v1/hello")
public class HelloController {

    @Value("${server.port}")
    private int port;

    @GetMapping("/world")
    public String hello() {
        String ip = null;
        try {
            ip = InetAddress.getLocalHost()
                            .getHostAddress();
        } catch (UnknownHostException eParam) {
            throw new RuntimeException(eParam);
        }
        return "Hello world from spring project " + ip + ":" + port;
    }

}
