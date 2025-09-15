import { NotificationService } from '../service/NotificationService';

@Entry
@Component
struct Index {
  @State message: string = 'Usage of \nNotification Kit';

  build() {
    Column() {
      Text(this.message)
        .id('Message')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .fontSize(18)

      Button("Notification with Agent")
        .margin({top: 8})
        .onClick(()=>{
          NotificationService.triggerNotificationWithAgent()
        })
      Button("Simple Notification")
        .margin({top: 10})
        .onClick(()=>{
          NotificationService.triggerSimpleNotification()
        })

    }
    .justifyContent(FlexAlign.Center)
    .height('100%')
    .width('100%')
  }
}