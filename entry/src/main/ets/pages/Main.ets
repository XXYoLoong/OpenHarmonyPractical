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
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Column() {
        Tabs({ barPosition: BarPosition.End }) {
          TabContent() {
            Column() {//加入你的页面代码，此处仅放图片占位
              Image($r('app.media.lbt_3'))
                .width("100%")
                .height("100%")
            }
            .width("100%")
            .height("100%")
          }
          .tabBar({ text: "Open" })//""里面填写你的导航栏名称，此处仅占位
          TabContent() {
            Column() {//加入你的页面代码，此处仅放图片占位
              Image($r('app.media.lbt_1'))
                .width("100%")
                .height("100%")
            }
            .width("100%")
            .height("100%")
          }
          .tabBar({ text: "Harmony" })//""里面填写你的导航栏名称，此处仅占位
          TabContent() {
            Column() {//加入你的页面代码，此处仅放图片占位
              Image($r('app.media.lbt_2'))
                .width("100%")
                .height("100%")
            }
            .width("100%")
            .height("100%")
          }
          .tabBar({ text: "Practical" })//""里面填写你的导航栏名称，此处仅占位
        }
        .width("100%")
        .height("100%")
      }
      .width("100%")
      .height("100%")
      .alignItems(HorizontalAlign.Center)
      .justifyContent(FlexAlign.Center)
    }
    .width("100%")
    .height("100%")
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Center)
  }
}