import { Given, Then, When } from '@cucumber/cucumber';
import { Actor, List, Log } from '@serenity-js/core';
import {
    By,
    ExecuteScript,
    LastScriptExecution,
    Navigate,
    PageElements,
} from '@serenity-js/web';

Given('{actor} gets a list of recordings from {string}', async (actor: Actor, listPage: string) =>
    actor.attemptsTo(Navigate.to(`https://archive.org/details/${listPage}`)),
);

When('{actor} parses the recordings greater than {int} minutes long', async (actor: Actor, durationMins: number) =>
    actor.attemptsTo(
        ExecuteScript.sync(function findFilms(
            element: { playlist: listing[] },
            duration: number,
        ) {
            return element.playlist
        .filter((f) => f.duration > duration * 60)
        .map((f) => f.title);
        }).withArguments(
            PageElements.located(By.css('play-av')).first(),
            durationMins,
        ),
    ),
);

Then('{actor} can create a list of films for {}', async (actor: Actor, listPage: string) =>
    actor.attemptsTo(
        Log.the(listPage),
        List.of(LastScriptExecution.result<string[]>())
        .forEach(({ actor, item }) =>
            actor.attemptsTo(
                Log.the(item.replace(/^.{8}-/, '').replace(/-20\d\d-.+$/, '').replaceAll('-', ' '))
            )
        ),
    ),
);

interface source {
    file: string;
    type: string;
    height: string;
    width: string;
    label: string;
}
interface listing {
    title: string;
    orig: string;
    duration: number;
    sources: Array<source>;
}
