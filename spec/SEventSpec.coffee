describe "TimelineEvent model", -> 
    timelineEvent = {}
    beforeEach ->
        timelineEvent = new TimelineEvent({
            text: 'Some text'
        })
    
    describe "when instantiated", ->
            breakMe()
        
        it "should exhibit attributes", ->
            expect(timelineEvent.get('text')).toEqual('Some text')

        it "when should default to today", ->
            now = new Date()
            eventWhen = timelineEvent.get('when')
            ## allow for a small difference - maybe replace this with a date generator service I can stub? 
            threshold = 100
            expect(now - eventWhen).toBeLessThan(threshold)

    describe "url", ->
        collection = {}
        beforeEach ->
            collection = {
                url: "/collection"
            }
            timelineEvent.collection = collection
             
        it "should set the URL to the collection URL", ->
            expect(timelineEvent.url()).toEqual("/collection")

        describe "when no id is set", ->
            it "should return the collection URL", ->
                expect(timelineEvent.url()).toEqual("/collection")

        describe "when id is set", ->
            it "should return the collection URL and id", ->
                timelineEvent.id = 1
                expect(timelineEvent.url()).toEqual("/collection/1")
