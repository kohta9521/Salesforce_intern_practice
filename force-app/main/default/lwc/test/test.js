// test.js

import { LightningElement } from 'lwc';
import MyCustomButton from './myCustomButton.css';

export default class Test extends LightningElement {
  handleClick() {
    // ボタンがクリックされたときに実行されるロジック
    alert('ボタンがクリックされました！');
  }
}