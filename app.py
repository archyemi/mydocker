#!/usr/bin/env python
import click

@click.command()
def hello():
    click.echo('Hello World, Today is great')
    
if __name__ == '__main__':
    hello()
