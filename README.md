# SwiftUIKit


### ButtonStyle
###### [Button📂](https://github.com/yangsubinn/SwiftUIKit/tree/master/SwiftUIKit/SwiftUIKit/DesignSystem/View/Button)
<img src="https://github.com/yangsubinn/SwiftUIKit/assets/81167570/f473ba44-3edf-4324-9ac1-d283c21deaf9" width=300 />

1️⃣ CustomButton
- type: ButtonType 사용해서 지정 (default: large, square)

```
@State var buttonState: ButtonState = .disable

CustomButton(action: {
    // 수행할 액션
}, label: {
    Text("CustomButton (default)")
}, state: $buttonState)


CustomButton(action: {
    // 수행할 액션
}, label: {
    Text("CustomButton (small, round)")
}, state: $buttonState,
	type: ButtonType(size: .small, shape: .round)) // 원하는 타입 지정

```

2️⃣ CustomButtonStyle
- NavigationLink와 같이 간접적으로 생성되는 버튼에 사용
- CustButtonStyle 사용하여 type과 state 추가 후 buttonStyle 지정
```
NavigationLink(destination: TempView()) {
    Text("CusomButtonStyle (medium, round)")
}
.buttonStyle(
    CustomButtonStyle(
    type: ButtonType(size: .medium, shape: .square),
    state: $statethree)
)

```




### TextField
###### [TextField📂](https://github.com/yangsubinn/SwiftUIKit/tree/master/SwiftUIKit/SwiftUIKit/DesignSystem/View/TextField)

![ezgif com-resize (5)](https://github.com/yangsubinn/SwiftUIKit/assets/81167570/143fb923-8a41-4ab7-ae6f-004e50432f9f)


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

