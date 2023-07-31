import { LightningElement } from "lwc";

export default class CustomButton extends LightningElement {
  // ボタンがクリックされたときに実行されるロジック
  handleClick() {
    alert("ボタンがクリックされました！");
  }
}
