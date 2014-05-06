# coding: utf-8
# Author Steven
import web,os

# Define urls
pre_fix = "controls.control."
urls = (
	'/main', pre_fix + 'Main',
	'/$', pre_fix + 'Login',
	'/logout$', pre_fix + 'Logout',
	'/muser', pre_fix + 'ModifyUserInfo',
	'/aserver', pre_fix + 'AddServerInfo',
	'/aserver1', pre_fix + 'AddServerInfo1',
	'/mserver', pre_fix + 'ModifyServerInfo',
	'/addhost', pre_fix + 'AddHost',
	'/mhosts', pre_fix + 'ModifyHosts',
	'/midc', pre_fix + 'ModifyIDC',
	'/mcity', pre_fix + 'ModifyCity',
	'/mproject', pre_fix + 'ModifyProject',
	'/citylist', pre_fix + 'CityList',
	'/idclist', pre_fix + 'IDCList',
	'/projectlist', pre_fix + 'ProjectList',
	'/citylisthost', pre_fix + 'CityListHost',
	'/idclisthost', pre_fix + 'IDCListHost',
	'/projectlisthost', pre_fix + 'ProjectListHost',
	'/projectidclist', pre_fix + 'ProjectIDCList',
	'/pihl', pre_fix + 'ProjectIDCHostList',
	'/cil', pre_fix + 'CityIDCList',
	'/cihl', pre_fix + 'CityIDCHostList',
	'/index', pre_fix + 'Index',
	'/search', pre_fix + 'Search',
	'/userlist', pre_fix + 'UserList',
	'/export', pre_fix + 'Export',
	'/history', pre_fix + 'History',
	'/404', pre_fix + 'Error404',
	'/500', pre_fix + 'Error500',
)


# Loading system config
app = web.application(urls, globals())

# Define sessions
curdir = os.path.dirname(__file__)

if web.config.get('_session') is None:
	session = web.session.Session(app, web.session.DiskStore(os.path.join(curdir, 'sessions')), initializer={'logined': 0, 'uid': 0, 'username': '', 'privilege': 0})
	web.config._session = session
else:
	session = web.config._session

def session_hook():
	web.ctx.session = session

app.add_processor(web.loadhook(session_hook))


