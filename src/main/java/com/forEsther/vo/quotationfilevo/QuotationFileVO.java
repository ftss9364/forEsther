package com.forEsther.vo.quotationfilevo;

import java.util.Date;

import lombok.Data;

@Data
public class QuotationFileVO {
	private String quotation_file_code;
	private String serial_lot_code;
	private String file_name;
	private String file_path;
	private long file_size;
	private String file_format;
	private Date upload_date;
	private String file_description;
}
