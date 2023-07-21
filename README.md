# SwiftUIKit


### ButtonStyle
###### 추가 수정 예정⏳
<img src="https://github.com/yangsubinn/SwiftUIKit/assets/81167570/4427bacb-cf16-4690-b1ee-e5e94a86eb90" width=300 />

[Button📂](https://github.com/yangsubinn/SwiftUIKit/tree/master/SwiftUIKit/SwiftUIKit/DesignSystem/View/Button)

```
@State var buttonState: ButtonState = .disable

/// 1️⃣ 기본 버튼 (large, square)
Button("기본 버튼") {
	// 수행할 액션
}
.buttonStyle(CustomButtonStyle(state: $buttonState))

/// 2️⃣ 커스텀 버튼 (small, round)
Button("커스텀 버튼 s") {
	// 수행할 액션
}
.buttonStyle(
		CustomButtonStyle(
			type: ButtonType(size: .small, shape: .round), 
			state: $buttonState)
)

/// 3️⃣ 커스텀 버튼 (medium, round)
Button("커스텀 버튼 m") {
	// 수행할 액션
}
.buttonStyle(
		CustomButtonStyle(
			type: ButtonType(size: .medium, shape: .round), 
			state: $buttonState)
)

```




### TextField
![ezgif com-resize (5)](https://github.com/yangsubinn/SwiftUIKit/assets/81167570/143fb923-8a41-4ab7-ae6f-004e50432f9f)

[TextField📂](https://github.com/yangsubinn/SwiftUIKit/tree/master/SwiftUIKit/SwiftUIKit/DesignSystem/View/TextField)


```
@State  var  nameTextField: String = ""
@State  var  hobbyTextField: String = ""

CustomTextField(
	textfield: $nameTextField, 
	placeholder: "이름을 입력해주세요", 
	type: .basic,
	maxCount: 20 // 선택
)
.padding()

CustomTextField(
	textfield: $hobbyTextField, 
	placeholder: "취미를 입력해주세요", 
	type: .title("취미 정보"),
	buttonType: .other("checkmark") // 선택 (default: .delete)
)
.padding()
```

