@Preview
@Component
export struct Information {
  build() {
    Column(){
      Row({space:20}){
        Button({ type: ButtonType.Circle}){
          Image($r("app.media.touxiang"))
            .width(70)
            .height(70)
        }.width('90%')
        .height(90)
        .backgroundColor(0x48D1CC)
        Text("马小虎")
          .fontSize(30)
          .fontColor(Color.White)
          .fontWeight(FontWeight.Bold)
          .margin({
            top:30,
            right:60
          })
      }.margin({
        top:30,
        right:60
      })
      Column(){
        Stack({ alignContent: Alignment.Bottom }) {
          Button({ type: ButtonType.Circle}){
          }.width(220)
          .height(220)
          .backgroundColor(0x48D1CC)
          Button({ type: ButtonType.Circle}){
            Column(){
              Image($r("app.media.light"))
                .width(45)
                .height(45)
              Text("520")
                .fontSize(55)
                .fontColor(Color.White)
                .fontWeight(FontWeight.Bold)
              Text("Km")
                .fontSize(35)
                .fontColor(0xC6C6C8)
                .fontWeight(FontWeight.Bold)
            }
          }.width(200)
          .height(200)
          .backgroundColor(0x45464A)
          .margin({
            top:10
          })
        }
        }.width('100%')
        .height(150)
        .margin({
          top: 50
        })
         Text("总电量")
           .fontSize(30)
           .fontColor(Color.White)
           .fontWeight(FontWeight.Bold)
           .margin({
             top:90
           })
      Row(){
        Stack({ alignContent: Alignment.Bottom }) {
          Button({ type: ButtonType.Normal}){
            Text("电量")
              .fontSize(22)
              .fontColor(Color.White)
              .fontWeight(FontWeight.Bold)
              .margin({
                bottom:160
              })
          }
          .width('90%')
          .height('100%')
          .borderRadius(25)
          .backgroundColor(0xC6C6C8)
          Button({ type: ButtonType.Normal}){
            Column(){
              Text("100")
                .fontSize(40)
                .fontColor(Color.White)
                .fontWeight(FontWeight.Bold)
              Text("%")
                .fontSize(40)
                .fontColor(Color.White)
                .fontWeight(FontWeight.Bold)
                .margin({
                  left:30
                })
            }
          }.width(110)
          .height(140)
          .borderRadius(25)
          .backgroundColor(0x81D7DF)
          .margin({
            bottom:20
          })
        }.width("50%").height(210).margin({ top: 30 })
        Column(){
          Stack({ alignContent: Alignment.Bottom }) {
            Button({ type: ButtonType.Normal}){
              Text("轮胎压力值")
                .fontSize(22)
                .fontColor(Color.White)
                .fontWeight(FontWeight.Bold)
                .margin({
                  bottom:50
                })
            }.width('90%')
            .height(90)
            .borderRadius(25)
            .backgroundColor(0xC6C6C8)
            Row({space:5}){
              Image($r("app.media.dashboard"))
                .width(42)
                .height(42)
              Text("32PSI")
                .fontSize(22)
                .fontColor(Color.White)
                .fontWeight(FontWeight.Bold)
            }
          }.width("50%").height(80).margin({ top: 30 })
          Stack({ alignContent: Alignment.Bottom }) {
            Button({ type: ButtonType.Normal}){
              Text("总里程")
                .fontSize(22)
                .fontColor(Color.White)
                .fontWeight(FontWeight.Bold)
                .margin({
                  bottom:50
                })
            }
            .width('90%')
            .height(90)
            .borderRadius(25)
            .backgroundColor(0xC6C6C8)
            Row(){
              Image($r("app.media.tyre"))
                .width(45)
                .height(45)
              Text("100Km")
                .fontSize(22)
                .fontColor(Color.White)
                .fontWeight(FontWeight.Bold)
            }
          }.width("50%").height(80).margin({ top: 30 })
        }
      }.margin({
        top:30
      })
    }.width("100%")
    .height("100%")
    .backgroundImage($r("app.media.Background"))
  }
}