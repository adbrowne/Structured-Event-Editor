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

        it "should exhibit attributes2", ->
            expect(timelineEvent.get('text')).toEqual('Some text')
