import { LightningElement, api, track } from "lwc";
import { guid } from "c/utilsPrivate";

export default class cVerticalNavigationSection extends LightningElement {
  // ------
  @api recordId;
  @api objectName;
  @api fields;
  @api title;
  @api iconName;
  @api mode;
  // ------

  headingId = guid();

  @track _label;

  set label(label) {
    this._label = label;
  }

  @api get label() {
    return this._label || "";
  }

  handleOverflowRegister(event) {
    event.stopPropagation();
    const item = event.detail;
    item.callbacks.updateAssistiveText(this.label);
  }
}
