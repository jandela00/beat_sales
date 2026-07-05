# beat_sales

b:eat 프랜차이즈 랜딩페이지 관련 저장소입니다.

## 구성

```
b-eat-landing/
├── index.html            # 전체 섹션을 하나로 합친 랜딩페이지 (실제 배포용)
├── s0.html                # S0  히어로
├── s1.html                # S1  프로모션 배너
├── s2.html                # S2  기대수익 (파이차트 + 매출표)
├── s3.html                # S3  Since 2016 연혁 타임라인
├── s4.html                # S4  Key Point 8종 카드
├── s5.html                # S5  AI 매장 운영 솔루션 (탭)
├── s6.html                # S6  타사 비교표
├── s6-1.html               # S6-1 3 Track Client 인터뷰 (유튜브 임베드)
├── s7.html                # S7  설치 가능 상권 캐러셀
├── s8.html                # S8  하이브리드 매장 (3슬라이드)
├── s9.html                # S9  원두 블렌드 + 시즌 메뉴 캐러셀
├── s10.html                # S10 특허 취득 타임라인
├── s11.html                # S11 마케팅 지원 갤러리
├── s12.html                # S12 도입 조건 (구매형 / 파트너십형)
├── footer.html             # 사이트 푸터
└── assets/                # 섹션별 이미지·SVG 에셋
```

## 진행 상황

- [x] S0 ~ S12, footer 전 섹션 퍼블리싱 완료
- [x] 전체 섹션을 `index.html` 하나로 통합
- [x] 네비게이션 메뉴 앵커 연결 (섹션 이동 4개 + 외부 링크 2개, 새 창)
- [x] 스크롤 시 콘텐츠가 부드럽게 올라오는 리빌(reveal) 인터랙션 적용
- [x] PC 기준 최소 1400px, 모바일은 반응형(가로 스크롤 없음)

## 반응형 규칙

- 콘텐츠는 `max-width: 1400px`로 중앙 정렬되며, 그보다 넓은 화면에서는 여백이 늘어나고 좁은 화면에서는 뷰포트 폭에 맞춰 반응형으로 줄어듭니다.
- 모든 페이지에서 가로 스크롤이 발생하지 않도록 `overflow-x: hidden`을 적용했습니다.

## 출처

Figma 디자인 파일을 기반으로 추출 및 변환되었습니다.
https://www.figma.com/design/LXp3YnfekN9uhQVVYDHi92/b-eat-프랜차이즈-랜딩페이지

## 실행 방법

`b-eat-landing/index.html` 파일을 브라우저에서 직접 열면 전체 랜딩페이지를 확인할 수 있습니다. `assets/` 폴더와 같은 위치에 있어야 이미지가 정상적으로 표시됩니다.

로컬 미리보기 서버가 필요한 경우 저장소 루트의 `serve.ps1`을 PowerShell로 실행하면 정적 파일 서버가 뜹니다 (기본 포트 8737).

```powershell
./serve.ps1
```
