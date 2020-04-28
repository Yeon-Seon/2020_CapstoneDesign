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
* ARP Spoofing 공격 시나리오   
    * 피해자 PC와 공유기 간의 정상적인 통신   
<img src="https://user-images.githubusercontent.com/48937186/80508582-2e782b00-89b3-11ea-906d-37c2b0673c92.png" width="700">      
    * ARP Spoofing 공격 과정   
<img src="https://user-images.githubusercontent.com/48937186/80507477-db51a880-89b1-11ea-9d1a-a6d93899ad2f.PNG" width="700">   
    * ARP Spoofing으로 인한 MITM
<img src="https://user-images.githubusercontent.com/48937186/80507499-e1478980-89b1-11ea-82f1-9f7e8aa060aa.PNG" width="700">    

## 개발환경

* 공유기 : 샤오미 공유기2 (Xiaomi Mi Wi-Fi mini)  

<img src="https://img.danawa.com/prod_img/500000/928/180/img/3180928_1.jpg?shrink=500:500&_v=20150702112553" width="40%"></img>  

* OpenWrt 설치

```
https://m.blog.naver.com/PostView.nhn?blogId=love_tolty&logNo=221743172685&proxyReferer=https%3A%2F%2Fwww.google.com%2F
```

