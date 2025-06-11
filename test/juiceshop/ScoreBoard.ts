import { Ensure, isTrue } from '@serenity-js/assertions';
import { Task } from '@serenity-js/core';
import { GetRequest, LastResponse, Send } from '@serenity-js/rest';
import { Navigate } from '@serenity-js/web';

export const ScoreBoard = {

    confirmChallengeSolved: (challengeName: string) => 
        Task.where(`#actor confirms that ${challengeName} has been solved`,
            Send.a(GetRequest.to('/api/Challenges/?sort=name')),
            Ensure.that(
                LastResponse.body<ChallengeData>().data
                .find((challenge) => challenge.name === challengeName)
                .solved,
                isTrue()
            )
        ),

    open: () => 
        Task.where('#actor opens the Score Board',
            Navigate.to('/#/score-board'),
        ),

};

interface ChallengeData {
    status: string,
    data: Challenge[]
}

interface Challenge {
    name: string,
    solved: boolean
}