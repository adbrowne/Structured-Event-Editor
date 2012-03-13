console.log("Testing")

describe "Event", -> 
    it "should be be able to display a box", ->
        mySEvent = new SEvent();
        expect(mySEvent.name).toEqual("Andrew");
