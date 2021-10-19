/*
 * @Author: KingWJC
 * @Date: 2021-10-18 17:17:22
 * @LastEditors: KingWJC
 * @LastEditTime: 2021-10-19 18:16:25
 * @Descripttion: 
 * @FilePath: \psp_back\src\main\java\com\example\psp_back\PspBackApplication.java
 */
package com.example.psp_back;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan
public class PspBackApplication {

	public static void main(String[] args) {
		SpringApplication.run(PspBackApplication.class, args);
	}

}