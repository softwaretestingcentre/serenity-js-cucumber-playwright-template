import { Given, Then, When } from '@cucumber/cucumber';
import { Actor } from '@serenity-js/core';

import { JuiceShop, ScoreBoard } from '../../test/juiceshop';

Given('{actor} goes to the Juice Shop', async (actor: Actor) =>
    actor.attemptsTo(
        JuiceShop.open()
    )
);

When('{pronoun} searches for {string}', async (actor: Actor, searchTerm: string) =>
    actor.attemptsTo(
        JuiceShop.searchFor(searchTerm)
    )
)

Then('{pronoun} sees he/she/they has/have solved the {string} challenge', async (actor: Actor, challengeName: string) => {
    actor.attemptsTo(
        ScoreBoard.confirmChallengeSolved(challengeName)
    );
})

When('{pronoun} opens the score board', (actor: Actor) => {
    actor.attemptsTo(
        ScoreBoard.open()
    )
})

