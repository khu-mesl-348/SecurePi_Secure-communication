# SecurePi_Secure-communication

1. root계정 로그인
2. 디렉토리 생성 및 이동
	- mkdir /root/securepi (이미 존재한다면 생략)
	- cd /root/securepi
3. Secure Communication 파일 다운
	- git clone https://github.com/khu-mesl-348/SecurePi_Secure-communication.git
4. openssl_tpm_engine 설정
	- cd /root/securepi/SecurePi_Secure-communication/openssl_tpm_engine-0.4.2
	- sh ./setup.sh
5. OpenSSL RSA Private Key 생성
	- ./create_tpm_key <filename>
