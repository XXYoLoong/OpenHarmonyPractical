/* Copyright (C) 2024  Jiacheng Ni

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.*/
import router from '@ohos.router'

@Entry
@Component
struct Welcome {
  @State message: string = 'WelcomePage'



  build() {
    Column() {
      Stack() {
        Column() {
          Swiper() {
            Image($r('app.media.lbt_1'))// 更改图片路径，放置轮播的图片
              .width("100%")
              .height("100%")
            Image($r('app.media.lbt_2'))//这里的图片仅供示例
              .width("100%")
              .height("100%")
            Image($r('app.media.lbt_3'))
              .width("100%")
              .height("100%")
          }
          .width("100%")
          .height("100%")
          .cachedCount(3)
          .autoPlay(true)
          .disableSwipe(true)
        }
        .width("100%")
        .height("100%")
        .justifyContent(FlexAlign.Center)
        Column(){
          Text('欢迎使用OpenHarmonyPractical')//替换你想要的欢迎词
            .textAlign(TextAlign.Center)
            .fontSize(30)
            .offset({y:'-30%'})
          Button('开始体验')
            .type(ButtonType.Capsule)
            .fontStyle(FontStyle.Italic)
            .fontSize(30)
            .offset({y:'30%'})
            .onClick(() => {router.pushUrl({url:'pages/Log'})})
        }

      }
    }
    .width("100%")
    .height("100%")
  }
}
