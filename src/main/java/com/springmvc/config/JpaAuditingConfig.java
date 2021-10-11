package com.springmvc.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.domain.AuditorAware;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

@Configuration
@EnableJpaAuditing(auditorAwareRef = "auditorProvider")
public class JpaAuditingConfig {

	@Bean
	public AuditorAware<String> auditorProvider() {
		return new AuditorAwareImpl();		
	}
	/**
	 * Cấu hình để lấy thông tin nguoi dung he thống(createdBy, modifiedBy)
	 * @author Admin
	 *
	 */
	public static class AuditorAwareImpl implements AuditorAware<String>{

		@Override
		public String getCurrentAuditor() {
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			// Nếu chưa đăng nhạp
			if (authentication == null) {
				return null;
			}
			return authentication.getName(); // Đã đăng nhập thì lấy name
		}

		
	}
}
