package com.polarbookshop.orderservice.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.reactive.function.client.WebClient;

@Configuration
public class ClientConfig {
    @Bean
    WebClient webClient(ClientProperties props, WebClient.Builder builder) {
        String url = props.catalogServiceUri().toString();
        return builder.baseUrl(url).build();
    }
}
