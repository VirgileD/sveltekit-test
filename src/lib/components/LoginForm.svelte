<script>
    import { Button, FormGroup, Input, Label } from 'sveltestrap';
	import { goto } from '$app/navigation';

    let id = '';
    let password = '';
    let error = null;
    $: invalid = error ? "invalid" : ""

    async function handleLogin(e){
		console.log('handling login')
        if(e) {
			e.preventDefault()
		}
        try {
			goto(`/roadmap`)
        } catch(err){
			console.log('An error occured at login: '+err)
            error = err;
        }
    }

</script>

<svelte:head>
	<title>Sign in • Service</title>
</svelte:head>

<div class="centeredLogin">
		<h3>Service</h3>
		<FormGroup>
		  <Label for="id">DAS</Label>
		  <Input type="text" name="id" class="grey"	id="id" bind:value={id} placeholder="ID"  />
		</FormGroup>
		<FormGroup>
		  <Label for="password">Password</Label>
		  <Input type="password" name="password" class="grey" placeholder="password" bind:value={password} {invalid} feedback={error}/>
		</FormGroup>
		<Button primary on:click="{handleLogin}">Login</Button>
</div>
<style>
	.centeredLogin {
		margin-top: 10rem;
		margin-left: 20rem;
		padding: 2rem;
		width: 50rem;
		border: 1px solid white;
	}
	.centeredLogin :global(.grey) {
		color: #aaa;
		background-color: black;
		border: 1px solid #aaa;
	}
</style>