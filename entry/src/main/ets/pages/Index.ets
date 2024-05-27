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
            Image("")// “ ”里面放你的图片路径
              .width("100%")
              .height("100%")
            Image("")
              .width("100%")
              .height("100%")
            Image("")
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
          Text('放置你的欢迎语句')
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
