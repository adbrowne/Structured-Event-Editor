jasmineEnv = jasmine.getEnv();
jasmineEnv.updateInterval = 1000;

trivialReporter = new jasmine.TrivialReporter();

jasmineEnv.addReporter(trivialReporter);

jasmineEnv.specFilter = (spec) -> 
  trivialReporter.specFilter(spec)

jasmineEnv.execute();
