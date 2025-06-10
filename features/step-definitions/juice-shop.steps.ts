import { Given, Then, When } from '@cucumber/cucumber';
import { Actor } from '@serenity-js/core';
import { Navigate } from '@serenity-js/web';

Given('{actor} goes to the Juice Shop', async (actor: Actor) =>
    actor.attemptsTo(
        Navigate.to('/')
    )
);

When('{pronoun} searches for {string}', async (actor: Actor, searchTerm: string) =>
    actor.attemptsTo(
        
    )
)

Then('{pronoun} sees he/she/they has/have solved the {string} challenge', (actor: Actor, challengeName: string) => {
    // Write code here that turns the phrase above into concrete actions
})
