import { sveltekit } from '@sveltejs/kit/vite';
import node from '@sveltejs/adapter-node';

const config = {
	adapter: node(),
	plugins: [sveltekit()],
	server: {
		port: 3000
	},
};

export default config;
