import { Ensure, equals, includes, isPresent } from '@serenity-js/assertions';
import { Check, notes, Task, Wait } from '@serenity-js/core';
import { By, Click, Cookie,Enter,Key,ModalDialog,Navigate, PageElement, Press } from '@serenity-js/web';

export const JuiceShop = {
    open: () => 
        Task.where(
            '#actor opens the Juice Shop',
            Navigate.to('/'),
            Cookie.set({
                name: 'cookieconsent_status', 
                value: 'dismiss'
            }),
            Cookie.set({
                name: 'welcomebanner_status', 
                value: 'dismiss'
            }),
            Cookie.set({
                name: 'language', 
                value: 'en'
            }),
            Navigate.reloadPage()
        ),
        
    searchFor: (searchTerm: string) =>
        Task.where(
            `#actor searches for ${searchTerm}`,
            Click.on(SearchBar.searchButton()),
            Enter.theValue(searchTerm).into(SearchBar.searchInput()),
            Press.the(Key.Enter).in(SearchBar.searchInput()),
            Check.whether(searchTerm, includes('javascript:alert'))
            .andIfSo(
                Wait.until(ModalDialog, isPresent()),
                notes().set('alert_message', ModalDialog.lastDialogMessage())
            )
            
        ),

    confirmAlertMessageIs: (alertMessage: string) =>
        Task.where(
            `#actor confirms alert message is ${alertMessage}`,
            Ensure.that(notes().get('alert_message'), equals(alertMessage))
        )

}

const SearchBar = {
    searchButton: () =>
        PageElement.located(By.css('#searchQuery')).describedAs('Search button'),

    searchInput: () =>
        PageElement.located(By.css('app-mat-search-bar input')).describedAs('Search input'),

}
