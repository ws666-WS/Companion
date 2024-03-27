@Preview
@Component
export struct Cruise{
  build() {
    Column() {
    }.width("100%")
    .height("100%")
    .backgroundImage($r("app.media.Cruise"))
    .backgroundImageSize(ImageSize.Cover)
    .backgroundImagePosition(Alignment.Center)
  }
}