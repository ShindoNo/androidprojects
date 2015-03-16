package com.sologame.sdk.util;

import java.util.HashMap;

public class ErrorTool {
	
	public static HashMap<Integer, String> sErrorMap = new HashMap<Integer, String>();
	
	public static void init() {
		sErrorMap = new HashMap<Integer, String>();
		sErrorMap.put(46, "Kết nối tới game gặp sự cố, vui lòng thử lại sau");
		sErrorMap.put(31, "Không có dữ liệu");
		sErrorMap.put(21, "Không đủ tiền thực hiện");
		sErrorMap.put(32, "Không tồn tại thao thác trên hệ thống");
		sErrorMap.put(3, "Lỗi chữ ký");
		sErrorMap.put(19, "Lỗi hệ thống, xin vui lòng thử lại sau");
		sErrorMap.put(25, "Lỗi hệ thống, xin vui lòng thử lại sau");
		sErrorMap.put(47, "Lỗi hệ thống, xin vui lòng thử lại sau");
		sErrorMap.put(48, "Lỗi hệ thống, xin vui lòng thử lại sau");
		sErrorMap.put(30, "Lỗi thẻ, xin vui lòng thử lại sau");
		sErrorMap.put(22, "Mã thẻ lỗi");
		sErrorMap.put(45, "Mã ứng dụng không tồn tại");
		sErrorMap.put(44, "Mật khẩu quá dài vui lòng nhập mật khẩu từ 6 đến 30 ký tự");
		sErrorMap.put(43, "Mật khẩu quá ngắn vui lòng nhập lại mật khẩu từ 6 đến 30 ký tự");
		sErrorMap.put(20, "Tài khoản chưa được kích hoạt");
		sErrorMap.put(4, "Tài khoản của bạn bị khóa");
		sErrorMap.put(10, "Tên đăng nhập chưa chính xác");
		sErrorMap.put(13, "Tên đăng nhập đã tồn tại");
		sErrorMap.put(1, "Tên đăng nhập hoặc mật khẩu chưa chính xác");
		sErrorMap.put(14, "Tên đăng nhập không bắt đầu là một dấu cách");
		sErrorMap.put(17, "Tên đăng nhập không chứa ký tự đặc biệt");
		sErrorMap.put(16, "Tên đăng nhập không chứa nhiều dấu cách");
		sErrorMap.put(15, "Tên đăng nhập không kết thúc là một dấu cách");
		sErrorMap.put(18, "Tên đăng nhập quá dài");
		sErrorMap.put(2, "Tham số truyền lên không đúng");
		sErrorMap.put(17, "Tên đăng nhập không chứa ký tự đặc biệt");
		sErrorMap.put(200, "Thành công");
		sErrorMap.put(28, "Thẻ chưa được kích hoạt");
		sErrorMap.put(26, "Thẻ đã được sử dụng");
		sErrorMap.put(29, "Thẻ đã quá hạn sử dụng");
		sErrorMap.put(27, "Thẻ không tồn tại");
		sErrorMap.put(11, "Token không tồn tại");
		sErrorMap.put(11, "Token không tồn tại");
		sErrorMap.put(41, "Xin vui lòng đăng nhập lại để tiếp tục thực hiện");
		sErrorMap.put(42, "Đã có thiết bị khác đăng nhập, vui lòng đăng nhập lại để tiếp tục thực hiện");
	}

}
