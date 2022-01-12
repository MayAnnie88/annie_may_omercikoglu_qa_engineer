class PaymentsPage {
  constructor() {
    //Payment Information Section
    this.pageTitleLocator = 'a';
    this.sectionTitleLocator = 'form h2';
    this.schoolSelectorLocator = 'select[name="school"]';
    this.tuitionAmountLocator = 'input[name="amount"]';
    this.amountReceivedLocator = 'input[name="amount_received"]';
    this.currencySelectorLocator = 'select[name="currency_from"]';
     
    //Sender Information Section
    this.studentIdLocator = 'input[name="student_id"]';
    this.yourNameLocator = 'input[name="sender_full_name"]';
    this.emailLocator = 'input[name="email"]';
    this.addressLocator = 'input[name="sender_address"]'
    this.countrySelectorLocator = 'select[name="country_from"]';

    this.bookPaymentButtonLocator = 'input[type="submit"]';

    this.bookConfirmationMessageLocator = 'h2';
  }

  //Getters for all the page elements
  
  getPageTitle() {
    return cy.get(this.pageTitleLocator);
  }

  getSectionTitle() {
    return cy.get(this.sectionTitleLocator);
  }

  getSchoolSelector() {
    return cy.get(this.schoolSelectorLocator);
  }

  getTuitionAmount() {
    return cy.get(this.tuitionAmountLocator);
  }

  getAmountReceived() {
    return cy.get(this.amountReceivedLocator);
  }

  getCurrencySelector() {
    return cy.get(this.currencySelectorLocator);
  }

  getStudentId() {
    return cy.get(this.studentIdLocator);
  }

  getYourName() {
    return cy.get(this.yourNameLocator);
  }

  getEmail() {
    return cy.get(this.emailLocator);
  }

  getAddress() {
    return cy.get(this.addressLocator);
  }

  getCountrySelector() {
    return cy.get(this.countrySelectorLocator);
  }

  getBookPaymentButton() {
    return cy.get(this.bookPaymentButtonLocator);
  }

  getbookConfirmationMessage() {
    return cy.get(this.bookConfirmationMessageLocator);
  }
}
  export default PaymentsPage;