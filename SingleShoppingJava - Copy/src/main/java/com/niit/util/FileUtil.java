package com.niit.util;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.springframework.web.multipart.MultipartFile;

public class FileUtil {
    public static String upload(String path, MultipartFile image, String filename) {
	if (!image.isEmpty()) {
	    InputStream inputstream = null;
	    OutputStream outputstream = null;
	    if (image.getSize() > 0) {
		try {
		    inputstream = image.getInputStream();
		    outputstream = new FileOutputStream(path + filename);
		    int readBytes = 0;
		    byte[] buffer = new byte[1024];
		    while ((readBytes = inputstream.read(buffer, 0, 1024)) != -1) {
			outputstream.write(buffer, 0, readBytes);
		    }
		} catch (IOException e) {
		    e.printStackTrace();

		} finally {
		    try {
			outputstream.close();
			inputstream.close();
		    } catch (IOException e) {
			e.printStackTrace();
		    }
		}
	    }
	}
	return "successfully uploaded";
    }

}

