import { Given, Then, When } from '@cucumber/cucumber';
import { Ensure, equals } from '@serenity-js/assertions';
import { Actor } from '@serenity-js/core';
import { ModalDialog } from '@serenity-js/web';

import { JuiceShop, ScoreBoard } from '../../test/juiceshop';

Given('{actor} goes to the Juice Shop', async (actor: Actor) =>
    actor.attemptsTo(
        JuiceShop.open()
    )
);

When('{pronoun} searches for {}', async (actor: Actor, searchTerm: string) =>
    actor.attemptsTo(
        JuiceShop.searchFor(searchTerm),
    )
)

Then('{pronoun} sees he/she/they has/have solved the {string} challenge', async (actor: Actor, challengeName: string) => 
    actor.attemptsTo(
        ScoreBoard.confirmChallengeSolved(challengeName)
    )
)

When('{actor} opens the {} at {}', async (actor: Actor, hiddenPage: string, url: string) => 
    actor.attemptsTo(
        JuiceShop.goto(hiddenPage, url)
    )
)

Then('{pronoun} should see no alert message', async (actor: Actor) => 
    actor.attemptsTo(
        Ensure.that(ModalDialog.lastDialogState(), equals('absent'))
    )
)

