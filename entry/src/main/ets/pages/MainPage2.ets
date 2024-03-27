import { Control } from '../view/Control'
import { Cruise } from '../view/Cruise'
import { Information } from '../view/Information'
import { Switch } from '../view/Switch'
@Entry
@Preview
@Component
struct MainPage {
  @State currentIndex:number= 1
  private myController: TabsController = new TabsController()
  @Builder
  TabBuilder(title:string,index:number,normaling:Resource,selectImg:Resource){
    Column({space:5}){
      Image(this.currentIndex==index? selectImg:normaling)
        .width(15)
        .height(15)
        .margin({
          top:5
        })
      Text(title)
        .fontColor(this.currentIndex==index?Color.Blue:Color.Black)
    }.width("100%")
    .onClick(()=>{
      this.currentIndex=index
      this.myController.changeIndex(index)
    })
  }
  build() {
    Tabs({
      barPosition:BarPosition.End,
      controller:this.myController
    }){
      TabContent(){
        Switch()
      }
      .tabBar(this.TabBuilder("一键开关",0,$r("app.media.clock1"),$r("app.media.clock1")))
      TabContent(){
        Control()
      }
      .tabBar(this.TabBuilder("小车控制",1,$r("app.media.control"),$r("app.media.control")))
      TabContent(){
        Cruise()
      }
      .tabBar(this.TabBuilder("位置导航",2,$r("app.media.GPS"),$r("app.media.GPS")))
      TabContent(){
        Information()
      }
      .tabBar(this.TabBuilder("个人信息",3,$r("app.media.information"),$r("app.media.information")))
    }.width("100%")
    .height("100%")
  }
  mounted() {
    // 组件挂载后，设置currentIndex
    this.currentIndex = 1; // 设置为1表示第二个页面将首先显示
  }
}
