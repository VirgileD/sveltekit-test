/** @type {import('@sveltejs/kit').Config} */
import preprocess from 'svelte-preprocess';

const config = {
        preprocess: preprocess({
                // ...svelte-preprocess options
        })
};

export default config;