import PaymentsPage from '../page_objects/PaymentsPage';

describe('Access Flywire Booking Process website and book a new payment', () => {
    
    const paymentsPage = new PaymentsPage;
        
    beforeEach(function() {
        cy.visit('http://localhost:9292/payment');
    })

    it('User clicks on "Book Payment" button in order to send the form', () => {
        paymentsPage.getBookPaymentButton().click()
        paymentsPage.getbookConfirmationMessage()
        .should('have.text', ' Thanks for booking a payment with Flywire, your payment will be processed shortly.')
    })

})