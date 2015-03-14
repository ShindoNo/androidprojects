
<?php 

class MCrypt {
	private $iv = 'sys_timesys_time'; #Same as in JAVA
	private $key = 'nhackhongloiinfo'; #Same as in JAVA

	function __construct()
	{
	}
	
	/**
	 * Encrypt input string to hex string
	 * @param unknown_type $str
	 * @return string
	 */
	function encryptToHexString($str) {
		$iv = $this->iv;

		$td = mcrypt_module_open('rijndael-128', '', 'cbc', $iv);

		mcrypt_generic_init($td, $this->key, $iv);
		$encrypted = mcrypt_generic($td, $str);

		mcrypt_generic_deinit($td);
		mcrypt_module_close($td);

		return bin2hex($encrypted);
	}

	/**
	 * Decrypted encrypted string with default iv
	 * @param unknown_type $code
	 */
	function decryptFromHexString($code) {
		$code = $this->hex2bin($code);
		$iv = $this->iv;

		$td = mcrypt_module_open('rijndael-128', '', 'cbc', $iv);

		mcrypt_generic_init($td, $this->key, $iv);
		$decrypted = mdecrypt_generic($td, $code);

		mcrypt_generic_deinit($td);
		mcrypt_module_close($td);

		return utf8_encode(trim($decrypted));
	}
	
	/**
	 * Decrypt encrypted string with given iv
	 * @param $code : hex string need to decrypt
	 * @param $iv : hex string of iv
	 * @return string
	 */
	function decryptFromHexStringWithIv($iv, $code) {
		$code = $this->hex2bin($code);
		$iv = $this->hex2bin($iv);
	
		$td = mcrypt_module_open('rijndael-128', '', 'cbc', $iv);
	
		mcrypt_generic_init($td, $this->key, $iv);
		$decrypted = mdecrypt_generic($td, $code);
	
		mcrypt_generic_deinit($td);
		mcrypt_module_close($td);
	
		return utf8_encode(trim($decrypted));
	}	
	
	/**
	 * Convert hext to byte array
	 * @param $hexdata : hex string
	 * @return byte array
	 */
	function hex2bin($hexdata) {
		$bindata = '';

		for ($i = 0; $i < strlen($hexdata); $i += 2) {
			$bindata .= chr(hexdec(substr($hexdata, $i, 2)));
		}

		return $bindata;
	}
}

$mCrypt = new MCrypt();
echo  $mCrypt->encryptToHexString("1361636193086");
echo "<br />";
echo $mCrypt->decryptFromHexString("7356749dffa2830063e1dfd5342e68dc");

