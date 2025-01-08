import { module, test } from 'qunit';
import { setupRenderingTest } from 'example/tests/helpers';
import { render, find } from '@ember/test-helpers';
import Foo from 'example/components/foo';

module('Integration | Component | foo', function (hooks) {
  setupRenderingTest(hooks);

  test('it renders', async function (assert) {
    await render(
      <template>
        <Foo>
          <span>Hello World</span>
        </Foo>
      </template>
    );

    const span = find('span');

    assert.dom(span).hasText('Hello World');
  });
});
