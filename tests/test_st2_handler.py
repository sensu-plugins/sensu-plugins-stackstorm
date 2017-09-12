import os
import sys
import six

sys.path.append(os.path.dirname(os.path.realpath(__file__)) + '/../bin/')

from unittest import TestCase

from st2_handler import Config, ConfigMeta

class HandlerTestCase(TestCase):
    def test_get_config_files_from_template(self):
        os.environ['SENSU_LOADED_TEMPFILE'] = 'tests/fixtures/test_config_template'

        files = Config.get_config_files()

        self.assertTrue(isinstance(files, list))
        self.assertEqual(len(files), 2)

    def test_get_config_files_from_specified_file(self):
        os.environ['SENSU_CONFIG_FILES'] = 'tests/fixtures/st2.json'

        files = Config.get_config_files()

        self.assertTrue(isinstance(files, list))
        self.assertEqual(len(files), 1)
        self.assertEqual(files[0], 'tests/fixtures/st2.json')

    def test_get_config_files_from_directories(self):
        class Config(six.with_metaclass(ConfigMeta)):
            CONFIG_DIR_BASE = 'tests/fixtures'

        files = Config.get_config_files()

        self.assertTrue(isinstance(files, list))
        self.assertEqual(len(files), 2)

    def test_get_config_value(self):
        os.environ['SENSU_CONFIG_FILES'] = 'tests/fixtures/st2.json'

        param = Config['st2_handler']

        self.assertTrue(isinstance(param, dict))
        self.assertEqual(param['st2_username'], 'username')

    def test_get_invalid_config_value(self):
        os.environ['SENSU_CONFIG_FILES'] = 'tests/fixtures/st2.json'

        with self.assertRaises(KeyError):
            Config['st2_handler']['invalid_value']
