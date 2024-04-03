// In your test file

import { CompA } from '.';

// ... your test logic

it('should return the formatted output', () => {
  const component = new CompA();
  const result = component.someMethod('test argument');
  expect(result).toBe('Dummy output for argument: test argument');
});
