import { LightningElement, api } from "lwc";

export default class BoxSample extends LightningElement {
  @api recordId;
  @api objectName;
  @api fields;
  @api title;
  @api iconName;
  @api mode;

  connectedCallback() {
    this.fields = this.fields ? this.fields.split(",") : [];
  }
}
