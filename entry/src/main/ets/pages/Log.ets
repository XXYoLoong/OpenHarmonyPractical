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
import router from '@ohos.router';


@Entry
@Component
struct Log {
  @State message: string = 'LogPage'


  build() {
    Column() {
      Column() {
        Text("YOLOONG")
          .width("200vp")
          .height("70vp")
          .offset({ x: "0", y: "-22%" })
          .fontColor("#ff40b9fa")
          .fontSize(40)
          .fontWeight(FontWeight.Bolder)
        Row() {
          Text("账号")
            .width("20%")
            .height("100%")
            .fontColor(Color.Black)
            .textAlign(TextAlign.Center)
            .fontSize("25fp")
          TextInput({ placeholder: "请输入您的账号" })
            .width("75%")
            .height("50vp")
        }
        .width("100%")
        .height("10%")
        .offset({ x: "0", y: "-18%" })

        Row() {
          Text("密码")
            .width("20%")
            .height("100%")
            .fontColor(Color.Black)
            .textAlign(TextAlign.Center)
            .fontSize("25fp")
          TextInput({ placeholder: "请输入您的密码" })
            .width("75%")
            .height("50vp")
        }
        .width("100%")
        .height("10%")
        .offset({ x: "0", y: "-18%" })

        Row() {
          Button("注册")
            .width("25%")
            .height("70%")
            .offset({ x: "5%", y: "0" })
            .backgroundColor("#b4eff3")
            .fontColor("#000000")
            .fontSize("16fp")
            .fontStyle(FontStyle.Normal)
            .fontWeight(FontWeight.Bold)
          Button("忘记密码")
            .width("30%")
            .height("70%")
            .offset({ x: "40%", y: "0" })
            .backgroundColor("#b4eff3")
            .fontColor("#000000")
            .fontSize("16fp")
            .fontStyle(FontStyle.Normal)
            .fontWeight(FontWeight.Bold)
        }
        .width("100%")
        .height("7%")
        .offset({ x: "0", y: "-19%" })

        Button("登录")
          .width("70%")
          .height("6%")
          .fontSize("30")
          .fontColor("#000000")
          .fontWeight(FontWeight.Bolder)
          .backgroundColor("#8b489bff")
          .offset({ y: "-15%" })
          .onClick(() => {router.pushUrl({ url: 'pages/Main' })})// ' ' 里面放你的主页路径
      }
    }
    .width("100%")
    .height("100%")
    .justifyContent(FlexAlign.Center)
  }
}
