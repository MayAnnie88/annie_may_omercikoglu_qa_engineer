import BookingPanelPage from '../page_objects/BookingPanelPage';

describe('Access Flywire Booking Panel website', () => {

    const bookingPanelPage = new BookingPanelPage();

    beforeEach(function() {
        cy.visit('http://localhost:9191/bookings');
    })

    it('There is a button to refresh the grid with the new payments received', () => {        
        bookingPanelPage.getRefreshButton()
            .should('be.visible')
    })
})