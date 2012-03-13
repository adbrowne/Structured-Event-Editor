describe "TimelineEvent model", -> 
    describe "when instantiated", ->
        timelineEvent = {}
        beforeEach ->
            timelineEvent = new TimelineEvent({
                text: 'Some text'
            })
            breakMe()
        
        it "should exhibit attributes", ->
            expect(timelineEvent.get('text')).toEqual('Some text')

        it "when should default to today", ->
            now = new Date()
            eventWhen = timelineEvent.get('when')
            ## allow for a small difference - maybe replace this with a date generator service I can stub? 
            threshold = 100
            expect(now - eventWhen).toBeLessThan(threshold)

        return 
