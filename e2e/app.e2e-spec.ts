import { SportsstorePage } from './app.po';

describe('sportsstore App', function() {
  let page: SportsstorePage;

  beforeEach(() => {
    page = new SportsstorePage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
