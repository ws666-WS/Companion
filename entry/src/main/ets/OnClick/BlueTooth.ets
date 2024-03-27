import router from '@ohos.router'
@Entry
@Preview
@Component
struct BlueTooth {
  private arr: string[] = ["Huawei P60 5G", "OPPO Reno7 5G","Redmi K60 Ultra 5G ","Huawei nova11 5G", "Huawei Mate50 Pro 5G","Huawei Mate40 5G","Huawei nova 10 5G"]
  @State editFlag: boolean = false
  build() {
    Column(){
      Button({type: ButtonType.Normal}){
        Image($r("app.media.left"))
      }.width("10%")
      .height(50)
      .backgroundColor(0x18191D)
      .margin({
        right:270,
        top:20
      })
      .onClick(()=>{
        router.pushUrl({
          url:"pages/MainPage2"
        })
      })
      Row({space:100}){
        Text("蓝牙")
          .fontSize(35)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.White)
        Toggle({ type: ToggleType.Switch, isOn: true })
          .selectedColor(0x39a2db)
          .switchPointColor(0xe5ffffff)
          .size({ width: 70, height: 70 })
          .onChange((isOn: boolean) => {
            console.info('Component status:' + isOn)
          })
      }
      Divider().vertical(false).strokeWidth(3).color(0x2788D9).lineCap(LineCapStyle.Round)
      Text("已配对设备")
        .fontSize(25)
        .fontColor(Color.White)
        .margin({
          top:40,
          right:140,
          bottom:40
        })
      List({ space: 0, initialIndex: 0 }) {
        ForEach(this.arr, (item) => {
          ListItem() {
            Row(){
              Image($r("app.media.phone"))
                .width("10%")
                .height(30)
              Text('' + item)
                .fontColor(Color.White)
                .width('100%').height(40).fontSize(16)
                .textAlign(TextAlign.Center).backgroundColor(0x47484C)
            }
          }.editable(true)
        }, item => item)
      }
      .listDirection(Axis.Vertical) // 排列方向
      .divider({ strokeWidth: 2, color: 0x3F4044, startMargin: 0, endMargin: 0 }) // 每行之间的分界线
      .edgeEffect(EdgeEffect.None) // 滑动到边缘无效果
      .chainAnimation(false) // 联动特效关闭
      .onScrollIndex((firstIndex: number, lastIndex: number) => {
        console.info('first' + firstIndex)
        console.info('last' + lastIndex)
      })
      .width("70%")
      .height(200)
      .editMode(this.editFlag)
      .onItemDelete((index: number) => {
        console.info(this.arr[index] + 'Delete')
        this.arr.splice(index, 1)
        console.info(JSON.stringify(this.arr))
        this.editFlag = false
        return true
      }).width('80%')
      .margin({
        bottom:30
      })
      Divider().vertical(false).strokeWidth(3).color(0x2788D9).lineCap(LineCapStyle.Round)
      Text("用于")
        .fontSize(25)
        .fontColor(Color.White)
        .margin({
          top:30,
          right:200
        })
      Column(){
        Row({space:120}){
          Text("通话音频")
            .fontSize(20)
            .fontColor(Color.White)
          Toggle({ type: ToggleType.Switch, isOn: true })
            .selectedColor(0x39a2db)
            .switchPointColor(0xe5ffffff)
            .size({ width: 50, height: 50 })
            .onChange((isOn: boolean) => {
              console.info('Component status:' + isOn)
            })
        }
        Row({space:120}){
          Text("媒体音频")
            .fontSize(20)
            .fontColor(Color.White)
          Toggle({ type: ToggleType.Switch, isOn: true })
            .selectedColor(0x39a2db)
            .switchPointColor(0xe5ffffff)
            .size({ width: 50, height: 50 })
            .onChange((isOn: boolean) => {
              console.info('Component status:' + isOn)
            })
        }
      }
    }.width("100%")
    .height("100%")
    .backgroundImage($r("app.media.Background"))
    .backgroundImageSize(ImageSize.Cover)
  }
}