// test.js

import { LightningElement } from 'lwc';

export default class Test extends LightningElement {
  handleClick() {
    // ボタンがクリックされたときに実行されるロジック
    alert('ボタンがクリックされました！');
  }
}
