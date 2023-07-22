# SwiftUIKit


### ButtonStyle
###### [Button📂](https://github.com/yangsubinn/SwiftUIKit/tree/master/SwiftUIKit/SwiftUIKit/DesignSystem/View/Button)

<img src="https://github.com/yangsubinn/SwiftUIKit/assets/81167570/d880a21b-2f11-4a33-a051-cb4efe728499" width=300 />


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


![ezgif com-resize (5)](https://github.com/yangsubinn/SwiftUIKit/assets/81167570/0d8a0323-8f9f-4289-93d4-a5415afe2a6f)



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

### BottomSheet
###### [BottomSheet📂](https://github.com/yangsubinn/SwiftUIKit/tree/master/SwiftUIKit/SwiftUIKit/DesignSystem/View/BottomSheet)

![ezgif com-resize (7)](https://github.com/yangsubinn/SwiftUIKit/assets/81167570/e8dfb7fd-c9c0-4f6a-bad0-04cbdc4fd60a)


```
BottomSheet(isShowing: $isShowing, type: .medium, content: {
	// BottomSheet에 들어갈 컨텐츠 작성
})
.edgesIgnoringSafeArea(.all)
```

