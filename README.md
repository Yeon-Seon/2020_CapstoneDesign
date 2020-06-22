### 2020년 1학기, 스마트 IoT 캡스톤 디자인
소프트 융합대학 : [lab-lwc/20201_CapstoneDesign](https://github.com/lab-lwc/20201_CapstoneDesign#2020%EB%85%84-1%ED%95%99%EA%B8%B0-%ED%95%9C%EB%A6%BC%EB%8C%80%ED%95%99%EA%B5%90-%EC%86%8C%ED%94%84%ED%8A%B8%EC%9C%B5%ED%95%A9%EB%8C%80%ED%95%99-capstonedesign-1)
***
## OpenWrt를 활용한 ARP Spoofing IDS
* 팀명 : IDSs_b
* 팀원 : 정연선
* 지도교수 : 조효진
* 참여기업 : 디지캡

## 프로젝트 개요
* 네트워크 통신을 위한 ARP(Address Resolution Protocol)의 과정에서 중간자 공격(MITM; Man-In-The-Middle Attack)인 [ARP Spoofing](https://en.wikipedia.org/wiki/ARP_spoofing) 공격이 가능함
* 공격자는 ARP Reply 패킷을 이용하여 피해자와 공유기의 ARP Table을 변경할 수 있으며 결과적으로 피해자PC가 공유기로 전송하는 모든 패킷을 도청(Sniffing)할 수 있음

## 프로젝트 목표
* 본 프로젝트에서는 공유기에 ARP Spoofing IDS(Instrusion Detection System)를 구축하여 ARP Spoofing 공격을 탐지하고자 함
* 리눅스 기반의 OpenWrt 펌웨어를 공유기에 업로드한 후, 공유기에 접속하는 모든 디바이스의 정보를 실시간으로 모니터링하는 프로그램을 개발하고 공격자의 정보를 띄어주는 IDS를 개발함
* 추가적으로 ARP Spoofing 공격과 VM(Virtual Machine) 연결을 구분하기 위한 알고리즘을 제시함
* ARP Spoofing 공격 시나리오를 구성한 후, 실제 공격이 일어났을 때 IDS의 탐지 성공 여부에 대한 실험을 함
* ARP Spoofing 공격 시나리오는 아래와 같음
    * 피해자 PC와 공유기 간의 정상적인 통신   
<img src="https://user-images.githubusercontent.com/48937186/85250215-e8aa8100-b490-11ea-8e27-d8fe3a4c314d.png" width="700">   
    * ARP Spoofing 공격 과정   
<img src="https://user-images.githubusercontent.com/48937186/85250273-0d9ef400-b491-11ea-8adb-196aac492a16.png" width="700">   
    * ARP Spoofing으로 인한 MITM   
<img src="https://user-images.githubusercontent.com/48937186/85250306-23acb480-b491-11ea-8efd-57f4580e81ba.png" width="700">    

***

## 개발환경

* OpenWrt 설치   
*샤오미 공유기2 (Xiaomi Mi Wi-Fi mini) 사용*

```
https://openwrt.org/toh/xiaomi/mini
```

## 프로젝트 결과
* 모니터링 프로그램 
    * 공유기에 접속하는 모든 디바이스의 IP Address, MAC Address, Host name, Connection Time, Continuos Time 정보를 실시간으로 보여주는 모니터링 프로그램 개발
    * Status는 현재 상태 표시를 나타내며 ARP Spoofing 발생시 피해자는 빨간색, 공격자는 파란색으로 정보를 보여줌
    * Connection Time은 디바이스가 공유기에 연결된 시간, Continuos Time은 공유기에 접속한 뒤, 접속을 유지하고 있는 시간을 나타냄
    * Number of connected device는 접속중인 기기의 수를 나타냄    
    ![image](https://user-images.githubusercontent.com/48937186/85250113-99fce700-b490-11ea-8b7f-702cbdca0071.png)

    * VM 연결 시
    ![image](https://user-images.githubusercontent.com/48937186/85250131-ad0fb700-b490-11ea-90bb-1e27c15312ce.png)

    
    * ARP Spoofing 공격 발생 시 
    ![image](https://user-images.githubusercontent.com/48937186/85250159-c3b60e00-b490-11ea-9de1-e023f4c61f0d.png)




