class BookingPanelPage {
  constructor() {
    this.tableTitleLocator = 'h1.ui.header';
    this.bookingsTableLocator= 'table#bookings';
    this.refreshButtonLocator = 'div.ui';    
    this.tableColumnHeaderLocator = 'thead tr th';
    this.tableRowLocator = 'tbody tr';
  }

  //Getters for all the page elements
  
  getTableTitle() {
    return cy.get(this.tableTitleLocator);
  }

  getBookingsTable() {
    return cy.get(this.bookingsTableLocator);
  }

  getRefreshButton() {
    return cy.get(this.refreshButtonLocator);
  }

  getTableColumnHeader() {
    return cy.get(this.tableColumnHeaderLocator);
  }

  getTableRow() {
    return cy.get(this.tableRowLocator);
  }

}
  export default BookingPanelPage;